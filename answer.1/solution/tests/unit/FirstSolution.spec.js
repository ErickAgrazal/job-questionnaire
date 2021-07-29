import { shallowMount } from '@vue/test-utils'
import FirstSolution from '@/components/FirstSolution.vue'

describe('FirstSolution.vue', () => {
  it('renders "three" in the list if the array starts with 3.', () => {
    const numbers = [3, ];
    const wrapper = shallowMount(FirstSolution, {
      props: { numbers }
    })
    expect(wrapper.find(".number").text()).toBe('three');
  })
  it('renders "five" in the list if the array starts with 5.', () => {
    const numbers = [5, ];
    const wrapper = shallowMount(FirstSolution, {
      props: { numbers }
    })
    expect(wrapper.find(".number").text()).toBe('five');
  })
  it('renders "three and five" in the list if the array starts with 15.', () => {
    const numbers = [15, ];
    const wrapper = shallowMount(FirstSolution, {
      props: { numbers }
    })
    expect(wrapper.find(".number").text()).toBe('three and five');
  });
  it('does not renders if the array starts with 4.', () => {
    const numbers = [4, ];
    const wrapper = shallowMount(FirstSolution, {
      props: { numbers }
    })
    expect(wrapper.find(".number").exists()).toBe(false);
  });
})
